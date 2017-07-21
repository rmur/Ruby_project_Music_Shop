require('pg')
require('../db/sql_runner')

class Artist
  attr_accessor :name
  attr_reader :id


  def initialize(params)
    @name = params['name']
    @id = params['id'].to_i if params['id']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES (#{@name}) RETURNING id;"
    result = SqlRunner.run(sql)
    @id =  resutl[0]['id'].to_i
  end

end
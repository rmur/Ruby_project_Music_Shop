
require_relative('../db/sql_runner')

class Artist
  attr_accessor :name
  attr_reader :id


  def initialize(params)
    @name = params['name']
    @id = params['id'].to_i if params['id']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING id;"
    result = SqlRunner.run(sql)
    @id =  result[0]['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM artists;"
    return SqlRunner.run(sql)
  end

end
require('pg')
require_relative('../db/sql_runner')

class Album
  attr_accessor :name,:current_stock
  attr_reader  :ideal_stock, :id
  def initialize(params)

    @name = params['name']
    @ideal_stock = params['ideal_stock'].to_i
    @current_stock = params['current_stock'].to_i
    @id = params['id'].to_i if params['id']

  end

  def save()
    sql = "INSERT INTO albums (name, ideal_stock, current_stock) 
    VALUES ('#{@name}', #{@ideal_stock}, #{@current_stock})
    RETURNING id;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i

  end

  def self.all()
    sql ="SELECT * FROM albums;"
    result = SqlRunner.run(sql)
    return result.map { | hash | Album.new(hash)}
  end

  def self.delete_all()
    sql ="DELETE FROM albums;"
    result = SqlRunner.run(sql)
    return result
  end


end
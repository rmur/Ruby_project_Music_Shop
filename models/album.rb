require('pg')
require_relative('../db/sql_runner')

class Album
  attr_accessor :name,:current_stock
  attr_reader  :ideal_stock, :id, :artist_id
  def initialize(params)

    @name = params['name']
    @ideal_stock = params['ideal_stock'].to_i
    @current_stock = params['current_stock'].to_i
    @artist_id = params['artist_id'].to_i
    @id = params['id'].to_i if params['id']

  end

  def save()
    sql = "INSERT INTO albums (name, ideal_stock, current_stock, artist_id) 
    VALUES ('#{@name}', #{@ideal_stock}, #{@current_stock}, #{@artist_id})
    RETURNING id;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i

  end

  def show()
    sql = "SELECT * FROM albums WHERE id = #{@id}"
    result = SqlRunner.run(sql)
    return result.map { |hash| Album.new(hash) }
  end

  
  def change_stock(new_number)
    sql = "UPDATE albums SET (current_stock) = (#{new_number}) WHERE id =#{@id}"
    return SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM albums WHERE id = #{@id}"
    return SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{id}"
    result = SqlRunner.run(sql)
    return Album.new(result.first)

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
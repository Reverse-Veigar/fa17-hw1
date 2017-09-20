class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`
    # How does map differ from map! ? Is it space allocation?
    a.map! { |c| c.to_i + 2 }
    #StackOverflow suggestion to get even enteries
    a.values_at(* a.each_index.select {|i| i.even?})
    #get rid of dups
    a.uniq!
    # what is the difference between reduce and inject?
    [a.reduce(:+),10].min
  end
end



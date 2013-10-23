class Hamming
  def self.compute(strand, other_strand)
    strand.chars.zip(other_strand.chars).select do |pair|
      different?(*pair)
    end.size
  end

  def self.different?(a, b)
    a && b && a != b
  end
end

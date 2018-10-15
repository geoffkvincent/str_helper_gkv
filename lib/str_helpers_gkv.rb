require "str_helpers_gkv/version"

module StrHelpersGkv
  def self.reversify(str)
    str.split('').reverse.join('')
  end

  def self.casify(str)
    to_case = [:upcase, :downcase]
    arr = str.split('')
    arr.each_with_index do |letter, i|
      this_case = to_case.sample
      arr[i] = letter.send(this.case)
    end
    arr.join('')
  end

  def self.spacifiy(str, spaces = 0)
    spaces.times do 
      str = str.split('').join(' ')
    end
    str
  end 
end

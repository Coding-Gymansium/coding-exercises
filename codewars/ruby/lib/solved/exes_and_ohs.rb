class ExesAndOhs
  def XO(str)
    str_arr = str.downcase.chars
    both_present = (str_arr.include?('o') && str_arr.include?('x') || !str_arr.include?('o') && !str_arr.include?('x')) 
    both_present && str_arr.count('o') == str_arr.count('x')
  end
end

#Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

#Examples input/output:
#
#XO("ooxx") => true
#XO("xooxx") => false
#XO("ooxXm") => true
#XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
#XO("zzoo") => false

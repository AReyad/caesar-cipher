print "Enter the message you want to encrypt: "
user_message = gets.chomp
print "Enter the amount of shifts: "
shift_amount = gets.chomp.to_i



def to_ascii_array(string)
 chars = string.split("")
  array_of_ascii = chars.map do |char|
    char.ord
  end
 array_of_ascii
end

def caesar_cipher(string, shift_factor)
 ascii_values_array = to_ascii_array(string)
 shifted_result = nil
 ciphered_chars =  ascii_values_array.map do |code|
   shifted_result = code + shift_factor
    if code.between?(65,90) && shifted_result > 90
      max_shifts = 91 - code
      remainder = (shift_factor - max_shifts) % 26
      code = 65 + remainder
      code.chr
    elsif code.between?(97,122) && shifted_result > 122
      max_shifts = (123 - code)
      remainder = (shift_factor - max_shifts) % 26 
      code = 97 + remainder
      code.chr
    elsif code.between?(65,90) && shifted_result < 65
      max_shifts = code - 64
      remainder = (shift_factor + max_shifts) % -26
      code = 90 + remainder
      code.chr
    elsif code.between?(97,122) && shifted_result < 97
      max_shifts = code - 96
      remainder = (shift_factor +  max_shifts)  % -26
      code = 122 + remainder
      code.chr
    elsif code.between?(65, 90) || code.between?(97, 122)
      shifted_result.chr
    else
      code.chr
    end
 end
 ciphered_chars
end

puts "Your encrypted message is: #{caesar_cipher(user_message, shift_amount).join("")}"

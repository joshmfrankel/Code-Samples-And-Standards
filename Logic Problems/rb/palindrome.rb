#
# Palindrome Class
#
# Checks a string against itself to see if it is a palindrome or not
#
# Author: Josh Frankel <joshmfrankel@gmail.com>
# Version: 1.0
#
class Palindrome

    def self.isPalindrome(string)

        # Save the original string for comparison in lowercase
        @originalString = string.downcase

        # Reverse the string
        @reversedString = @originalString.reverse

        # Perform early return check
        if @originalString == @reversedString
            return 'It is a Palindrome'

        # Simple reverse failed keep checking
        else

            # Allow only letters and numbers for both string
            @originalString = @originalString.tr("^a-zA-Z0-9 ", "").delete(' ')
            @reversedString = @reversedString.tr("^a-zA-Z0-9 ", "").delete(' ')

            if @originalString == @reversedString
                return 'It is a Palindrome'
            end

        end

        return 'No Palindrome Found'
    end
end

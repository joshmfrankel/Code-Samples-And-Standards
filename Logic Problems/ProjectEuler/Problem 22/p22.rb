


def readFileIntoString (filename)

    # Load the file into temp variable
    file = File.open( filename, "rb" )

    # Read file into the string
    return file.read

end

def convertStringToArray (string)

    # Strip Quotes from the string
    string.tr!('"', '')

    # Split string on ,
    array = string.split(',')

    return array
end

def sortArrayAlphabetically (array)

    # Sort by
    sortedArray = array.sort_by(&:downcase).uniq

    # Add numerical keys to the new hash array
    hash = Hash[sortedArray.map.with_index.to_a]

    return hash
end

def calculateWordValue (word)

    # init the sum
    sum = 0

    # Alphabetical Value Hash
    letterValue = {
        "A" => 1,
        "B" => 2,
        "C" => 3,
        "D" => 4,
        "E" => 5,
        "F" => 6,
        "G" => 7,
        "H" => 8,
        "I" => 9,
        "J" => 10,
        "K" => 11,
        "L" => 12,
        "M" => 13,
        "N" => 14,
        "O" => 15,
        "P" => 16,
        "Q" => 17,
        "R" => 18,
        "S" => 19,
        "T" => 20,
        "U" => 21,
        "V" => 22,
        "W" => 23,
        "X" => 24,
        "Y" => 25,
        "Z" => 26,
    }

    # Split on every character
    charArray = word.split(//)

    # On each character add to the sum
    charArray.each do |value|

        # Add to the sum
        sum += letterValue[value]

    end

    return sum

end

# Init total
total = 0

# Read the filename into a string
string = readFileIntoString("p022_names.txt")

# Convert the string into an array
wordArray = convertStringToArray(string)

# Sort the array alphabetically
sortedWordArray = sortArrayAlphabetically(wordArray)

# Each name calculate
sortedWordArray.each do |value, key|

    # Get name value score and offset the key
    nameValue = calculateWordValue(value) * (key + 1)

    # Add current value
    total += nameValue

end

# output total
puts total

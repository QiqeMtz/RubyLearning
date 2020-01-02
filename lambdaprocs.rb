# testing of a lambda for validate header

header = "application/json"

header_regex = /^application\/json$/

validate_header = -> (arg) do
    if arg.match header_regex
        return "true"
    else
        return "false"
    end
end

result = validate_header.call(header)

puts result
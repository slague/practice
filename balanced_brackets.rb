# A bracket is considered to be any one of the following characters: (, ), {, }, [, or ].
#
# Two brackets are considered to be a matched pair if the an opening bracket (i.e., (, [, or {) occurs to the left of a closing bracket (i.e., ), ], or }) of the exact same type. There are three types of matched pairs of brackets: [], {}, and ().
#
# A matching pair of brackets is not balanced if the set of brackets it encloses are not matched. For example, {[(])} is not balanced because the contents in between { and } are not balanced. The pair of square brackets encloses a single, unbalanced opening bracket, (, and the pair of parentheses encloses a single, unbalanced closing square bracket, ].

# A sequence of brackets is considered to be balanced if the following conditions are met:

# It contains no unmatched brackets.
# The subset of brackets enclosed within the confines of a matched pair of brackets is also a matched pair of brackets.
# Given  strings of brackets, determine whether each sequence of brackets is balanced. If a string is balanced, print YES on a new line; otherwise, print NO on a new line.


def balanced_brackets(string)
  check = { '{' => '}', '[' => ']', '(' => ')' }
  opens = check.keys
  closes = check.values
  stack = []

  string.chars.each do |char|
    if opens.include?(char)
      stack << char
    elsif closes.include?(char)
      if char == check[stack.last]
        stack.pop
      else
        return false
      end
    end
  end
  stack.empty? ? true : false
end


# t = gets.strip.to_i
# for a0 in (0..t-1)
#     expression = gets.strip
#     if balanced_brackets(expression)
#         p "YES"
#     else
#         p "NO"
#     end
# end

p balanced_brackets("({})")
p balanced_brackets("{)}")

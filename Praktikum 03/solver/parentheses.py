def compare(open, close):
    if open == '(' and close == ')':
        return True
    if open == '[' and close == ']':
        return True
    if open == '{' and close == '}':
        return True
    return False

def isValid(parentheses):
    stack = []

    for pths in parentheses:
        if pths in '({[':
            stack.append(pths)
        elif pths in ')}]':
            if len(stack) == 0:
                return "tidak valid"
            top_element = stack.pop()
            if not compare(top_element, pths):
                return "tidak valid"

    if len(stack) != 0:
        return "tidak valid"

    return "valid"

parentheses = str(input())
print(isValid(parentheses))
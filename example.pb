Func MainLoop(prefix) -> prefix + " Loop!!"

Func join(elements, separator)
	Set result = ""
	Set Len = Len(elements)

	For i = 0 To Len Then
		Set result = result + elements/i
		If i != Len - 1 Then Set result = result + separator
	End

	Return result
End

Func map(elements, func)
	Set new_elements = []

	For i = 0 To Len(elements) Then
		Append(new_elements, func(elements/i))
	End

	Return new_elements
End

Print("Hello World!!")

For i = 0 To 3 Then
	Print(join(map(["First", "Second"], MainLoop), ", "))
End

Print("Goodbye World!")

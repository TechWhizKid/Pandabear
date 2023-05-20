![Pandabear](https://github.com/TechWhizKid/Pandabear/blob/main/resources/banner.jpg?raw=true)
# Pandabear

Interpreter for language like `BASIC` written in python3.

## Installation

Install this project with git

```bash
  git clone https://github.com/TechWhizKid/Pandabear.git
```
Click on this [link](https://github.com/TechWhizKid/Pandabear/archive/refs/heads/main.zip) to download full project zipped
or click on this [link](https://github.com/TechWhizKid/Pandabear/raw/main/bin/Pandabear.zip) to get Pandabear.exe (zipped).

## Usage/Examples

#### You can run `help` or `/?` to get help information.

- Syntax are similar to python
```Pandabear
# Only works with double quotes (")
Print("Hello World!")  # :Hello World!
Print((5+5)*2+1)       # :21
#-------------------------------------
Set a = "Hello World!"
Print(a)               # :Hello World!
```

- Run scripts using `Run()`
```Pandabear
# Note: Using single quotes (') will show error.
Run("example.pb")
```

- You can get print return by using `Print_ret()`
```Pandabear
Print_ret("Hi there.") # :"Hi there."
```

- Comments can be added using `#`
```Pandabear
# This is a Comment
Print("Look up!")      # :Look up!
```

- Variables are created using keyword `Set`
```Pandabear
Set var = 10           # :10; 0
```

- Multiple variables can be declared in one line by using `;`
```Pandabear
Set var1 = 5; Set var2 = 10
```
- There is a built in variable named `Math_pi`
```Pandabear"
Print(Math_pi) # Returns "3.141592653589793"
# Just entering "Math_pi" also works
Math_pi
```

- Lists can be created using the same keyword (`Set`)
```Pandabear
Set list = ["a", "b"]; Set list2 = ["c", 1, 2]
```

- Items can be added to list using `Append()`
```Pandabear
Set list = [1, 2, 3, 4]
Append(list, 5)   # :[1, 2, 3, 4, 5]
```

- `pop()` can be used to remove items from list
```Pandabear
Set list = [1, 2, 3, 4]
Pop(list, 0)  # This will remove '1' from the list
#--Example 2--------------------------------------
Set list = [1, 2, 3, 4]
Pop(list, -1) # This will remove '4' from the list
```

- List can be combined using `Extend()`
```Pandabear
Set a = [1, 2, 3]
Set b = [4, 5, 6]
Extend(a, b)     # :[1, 2, 3, 4, 5, 6]
# Now a is = [1, 2, 3, 4, 5, 6] but b is unchanged.
```

- To check the length of a list `Len()` can be used
```Pandabear
Set list = [1, 2, 3, 4, 5]
Len(list)        # :5
```

- User input can be taken using `Input()`
```Pandabear
# Takes user input and does not take any arguments
Set a = Input()
Print(a)         # Print the input
```

- Integer input can be taken using `Input_int()`
```Pandabear
# This will prompt user to enter again if input was not "Int"
Set b = Input_int()
Print(b)         # Print the int input
```

- Screen can be cleared using `Clear()` & `Cls()`
```Pandabear
Clear()
Cls()
```

- There are ways to check the type of object using different keywords
```Pandabear
Is_int(10)      # Variables can be used as args
Is_str("Hi!")   # returns "0" if False
#----------------------------------------------
Set list = [1, 2, 3]
Is_list(list)   # Returns "1" if True
#----------------------------------------------
Func main() -> Print("Hello World!")
Is_func(main)   # Returns "1" if True else returns "0"
```

- If..Else statement (`If`, `Elsif`, `Else`, `Then`, `And`, `Or`, `End`)
##### If statement multiline:
```Pandabear
Set a = 10; Set b = 10
If a == b Then
	Print("a and b are equal")
	Print("Goodbye!")
End
```
##### If statement single line:
```Pandabear
Set a = 10; Set b = 10
If a == b Then Print("a & b are equal") And Print("Goodbye!")
# "End" should not be used in this case
```
##### Elsif statement multiline:
```Pandabear
Set a = 10; Set b = 8
If a == b Then
	Print("a & b are equal")
Elsif a > b Then
	Print("a is > b")
End
```
##### Elsif statement single line:
```Pandabear
Set a = 10; Set b = 8
If a == b Then Print("a=b") Elsif a > b Then Print("a is > b")
```
##### Else statement multiline:
```Pandabear
Set a = 10; Set b = 12
If a == b Then
	Print("a = b")
Elsif a > b Then
	Print("a > b")
Else
	Print("a < b")
End
```
##### Elsif statement single line:
```Pandabear
Set a = 10; Set b = 12
If a == b Then Print("a = b") Else Print("a < b")
# Elsif can be used in the middle too
```
##### Keywords `And` and `Or`
```Pandabear
# Use of "And" Keyword
Set a = 10; Set b = 10; Set c = 12
If a == 10 And a == b Then Print("Correct")

# Use "Or" Keyword
If a == c Or a == b Then Print("Correct")
# Elsif and Else can be used too
```
##### single line summary:
```Pandabear
If <case> Then <task> Elsif <case> Then <task> Else <task>
```
##### multiline line summary:
```Pandabear
If <case> Then 
	<task> 
Elsif <case> Then 
	<task> 
Else 
	<task>
End
```

- Functions are created using keyword `Func`
##### single line function uses `->` as start
```Pandabear
Func main() -> Print("Hello") And Print("World")
main() # calling function by its name
```
##### multiline line functions has to end with keyword `End`
```Pandabear
Func main()
	Print("Hello")
	Print("World")
End
main()
```

- Loops (`While`, `For`)
##### While loops:
```Pandabear
# Multiline "While loop" example
Set i = 0
While i < 10000 Then
    Set i = i + 1
    End
```
```Pandabear
# Single line "While loop" example
Set i = 0
While i < 10000 Then Set i = i + 1
```
```Pandabear
# This loop will not stop until exited
While True Then 
    Continue
```
```Pandabear
# This is a more practical use
Set a = 0
While True Then
    If a == 10 Then
        Print("'a' is equal to '10'")
        Break
    Else Set a = a + 1
End
```
##### For loops:
```Pandabear
Set res = 1
For i = 1 To 6 Then Set res = res * i
```
```Pandabear
Set res = 1
For i = 1 To 6 Then 
    Set res = res * i
End
res # This will print the res
```
```Pandabear
Set res = 120
For i = 5 To 0 Step -1 Then Set res = res * i
Print(res)
```
```Pandabear
Set res = 120
For i = 5 To 0 Step -1 Then
    Set res = res * i
End
Print(res)
```

## Pandabear Logo
![Logo](https://github.com/TechWhizKid/Pandabear/blob/main/resources/Pandabear.png?raw=true)


## License

[MIT](https://github.com/TechWhizKid/Pandabear/blob/main/LICENSE)

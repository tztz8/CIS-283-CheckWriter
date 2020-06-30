# CIS-283-CheckWriter
 For SCC CIS 283

doc -> md

**Assignment** : CheckWriter

**Submit:** electronic copy.

Create a program that creates a Class that EXTENDS the built-in Ruby class Float. That is will reopen the class to add your own definition of a new method that will be available to all of the float numbers.

Your class should implement ONLY the following method:

to\_check\_string

You may have additional PRIVATE methods in your class if you wish.

The method &quot;to\_check\_string&quot; will return a string which represents the Float number as a check writing string. For instance, 10,234.44 when converted will result in the string: &quot;ten thousand two hundred thirty four dollars and forty four cents&quot;.

This should work for any number between 0.00 and 999,999.99

Because the CheckWriter class inherits all the attributes and methods of a Float, your main program should be able to ask for a number from the user and return the printed string. It should also be able to add numbers together and print out the check string as a result.

For instance this code should work:

(10.25 + 40.30).to\_check\_string

should result in the following string:

&quot;Fifty dollars and fifty-five cents&quot;

You must submit your program with the name as follows so that my testing program will work with it as well. In addition you must submit a copy of the testing program along with your checkwriter program.

checkwriter.rb (Your program)

test\_check.rb (My testing program)

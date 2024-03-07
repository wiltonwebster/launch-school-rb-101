# Class and Instance Methods

# Locate the ruby documentation for methods File::path and File#path for version
# 2.7.8 of Ruby. How are they different?

# ::path is a File Class class method, meaning it can be called on the class 
# itself, as File.path(). This method takes a path as an argument and returns 
# the string version of that path. 

# #path is a File Class instance method, meaning it can be called on instances
# of File, such as File.new().path(). It returns as a string the pathname that
# was used to create the file.
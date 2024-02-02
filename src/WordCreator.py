import random

quantity = int(input("How many words do you want to generate? "))
# create a list of 10 prefixes
prefixes = ["bi", "pre", "re", "auto", "mis", "anti", "in", "trans", "extra", "ex"]
# create a list of suffixes
suffixes = ["ed", "ous", "ly", "ness", "er", "ment", "al", "able", "tion", "ful"]
# create a list of roots
roots = ["aqua", "chron", "scrib", "vis", "bio", "mort", 
         "bene", "dict", "anthropo", "dyna"]
# create defintions
predef = ["two ", "before ", "again ", "self ", "wrong ", 
          "in a way that's against ", "inside ",  
          "across ", "beyond ",  "outside "]
sufdef = ["something that was ", "having qualities of ",
          "something that is ", "state of ", "more of ", 
          "state of being ", "having characteristics of ", 
          "can be ", "process of ", "full of "]
rootsdef = ["water ", "time ", "written ", "seeing ", "life ", 
            "death ", "good ", "said ", "people ", "power "]
i= 0
while i < quantity:
  # create a random number between 0 - 10
  random_pre = random.randint(0, 9)
  random_root = random.randint(0, 9)
  random_suffix = random.randint(0, 9)
  # create a word
  print(prefixes[random_pre]+roots[random_root]+
        suffixes[random_suffix]+" :")
  i += 1
  print(sufdef[random_suffix]+predef[random_pre]+rootsdef[random_root])

(*
 *  CS164 Fall 94
 *
 *  Programming Assignment 1
 *    Implementation of a simple stack machine.
 *
 * Isabela Ferreira Scarabelli - Compilers 2024
 *)


-- Declaration class Stack
class Stack {

   top : String;   -- The top element of the stack

   next : Stack;  -- The rest of the stack

   isNil() : Bool { false };

   head()  : String { top };

   tail()  : Stack { next };

   push(i: String): Stack {
       (new Stack).init(i, self)
   };

   init(i : String, r : Stack) : Stack {
      {
         top <- i;
         next <- r;
         self;
      }
   };

};


class Main inherits Stack {
	ch : String;
  	p : String;
	q : String;
   	n : Int;
	m : Int;
	result : Int;
	nil : Stack;
	stack : Stack <- new Stack.init("-1", nil);

	main(): Object {
		{
			ch <- (new IO).in_string();

			--checking the inputs and acting according to each letter
			while not (ch = "x") loop  
            {
				
               if ch = "e" then {
					if stack.head() = "-1" then "Do Nothing" -- checking if it is the bottom of the stack
					else {
						ch <- stack.head();
						stack <- stack.tail();

						if ch = "+" then
						{
							p <- stack.head();
							stack <- stack.tail();
							m <- c2i(p);

							p <- stack.head();
							stack <- stack.tail();
							n <- c2i(p);
							
						-- When the program tries to sum with only one element in the stack, it aborts
							result <- m + n;
							p <- i2c(result);
							stack <- stack.push(p);
						}
						else
						if ch = "s" then
							{
								p <- stack.head();
								stack <- stack.tail();

								q <- stack.head();
								stack <- stack.tail();
								stack <- stack.push(p);
								stack <- stack.push(q);
							}
						else
							{ stack <- stack.push(ch); }
						fi 
						fi;
						}
						fi;
			    } else 
			    
				if ch = "d" then print_stack(stack) else
                {stack <- stack.push(ch); "Erro";}
                fi fi;
               
			    ch <- (new IO).in_string();  -- Read the next input
            } pool;
		}
	};

	
   print_stack(s : Stack) : Object {
      if s.head() = "-1" then (new IO).out_string("\nEnd\n")
    	else {
			   (new IO).out_string("\n");
			   (new IO).out_string(s.head());
			   s <- s.tail();
			   print_stack(s);
		}
      fi
   };

	c2i(char : String) : Int {
        	if char = "0" then 0 else
        	if char = "1" then 1 else
        	if char = "2" then 2 else
        	if char = "3" then 3 else
        	if char = "4" then 4 else
        	if char = "5" then 5 else
        	if char = "6" then 6 else
        	if char = "7" then 7 else
        	if char = "8" then 8 else
        	if char = "9" then 9 else
        	{ abort(); 0; }  -- the 0 is needed to satisfy the typchecker
        	fi fi fi fi fi fi fi fi fi fi
       };


      i2c(i : Int) : String {
        	if i = 0 then "0" else
        	if i = 1 then "1" else
       		if i = 2 then "2" else
        	if i = 3 then "3" else
        	if i = 4 then "4" else
        	if i = 5 then "5" else
        	if i = 6 then "6" else
        	if i = 7 then "7" else
        	if i = 8 then "8" else
        	if i = 9 then "9" else
        	{ abort(); ""; }  -- the "" is needed to satisfy the typchecker
        	fi fi fi fi fi fi fi fi fi fi
     };
};


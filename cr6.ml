
module IntOrderedType : (Set.OrderedType with type t = int) =
  struct
    type t = int
    let compare = compare
  end
;;

module IntSet : Set.S = Set.Make(IntOrderedType) ;;

(* Mutable list type from lab *)
type 'a mlist =
  | Nil
  | Cons of 'a * ('a mlist ref) ;;

(* Exercise 1 *)

(* Initialize variable test_lst_ref1 to be a ref to Nil *)
(* let test_lst_ref1 = ????? *)

(* Initialize variable test_lst_ref2 containing the value 1 and then refer to empty_lst_ref *)
(* let test_lst_ref2 = ????? *)

(* Modify the contents of test_lst_ref1 to be an mlist with value 2 *)

(* Exercises 2 & 3 *)

(* Insert puts el into the lst at the index number ind. If ind < 0, it should be treated the same as 0 *)
(* If the index is larger than or equal to the length of the list, the element should be placed at the end *)
let rec insert (lst: 'a mlist ref) (el : 'a) (ind: int) : unit = ();;

(* Insert puts el into the lst at the index number ind. If ind < 0, it should be treated the same as 0 *)
(* If the index is larger than or equal to the length of the list, the element should be placed at the end *)
let rec insert_ordered (lst: 'a mlist ref) (el : 'a) (ind: int) : unit = ();;



let gensym : string -> string =
  let ctr = ref 0 in (* DONE ONLY ONCE, when this function is declared *)
  
  (* This anonymous function is done as often as gensym is called *)
  fun s ->  let v = s ^ string_of_int !ctr in
            ctr := !ctr + 1;
            v ;;


(* DANGEROUS CASE! *)
let dangerous_ref = ref (Cons (2, ref Nil));;
dangerous_ref := Cons (1, dangerous_ref) ;;

(* Exercise 4 *)

(* Squares each element of the list, completed already *)
let rec square_each (lst: int list) : int list =
  match lst with
  | [] -> []
  | hd :: tl -> (hd * hd) :: (square_each tl)
;;

(* Squares each element of the list tail recursively *)
let square_each_tr (lst: int list) : int list = failwith "incomplete";;


(* Exercise 5 *)

(* Generates a list of numbers that are equal to "remainder" mod "divide_by" 
  that are less than or equal to n
  
  For example (mod_class_up_to_n_while 3 4 13) should output [3; 7; 11] *)

(* Use a while loop *)
let mod_class_up_to_n_while (remainder: int) (divide_by: int) (n: int) = failwith "not done";;

(* Use a for loop *)
let mod_class_up_to_n_for (remainder: int) (divide_by: int) (n: int) = failwith "not done";;
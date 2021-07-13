(* This is an OCaml file; there is support for OCaml, but indenting etc
needs eg ocamlformat to be installed apparently, ie can't just indent in 
browser :( *)

(** Quick reimplementation 2021q1, following my current preferred
   coding style, with mutable datastructures. Self-contained single
   file implementation. Unstaged, efficient O(n^3). *)

   let dont_log = true

   (** {2 Sets, maps implementation} *)
   
   type 'e set = {
     add      : 'e -> unit;
     mem      : 'e -> bool;
     add_list : 'e list -> unit;
     to_list  : unit -> 'e list;
   }
   

(this is a little test (
    of lisp mode mattn.lisp in (
        vs code
        not too bad
    )
))

(items: 
    (N: nt,i,k,bs)
    (C: i,sym,j)
    (EXP: sym,k))

(ocaml code: 
        let step itm =
          match itm with 
          | N itm -> begin
              r.incr_count();
              let bs = itm|>dot_bs in
              match is_complete bs with
              | true ->  
                let i_,sym,j_ = (itm|>dot_i), _NT (itm|>dot_nt), (itm|>dot_k) in
                r.add_item (C {i_; sym; j_ });
                ()
              | false -> 
                let k_,_S = (itm|>dot_k), (syms_hd bs) in                
                r.add_item (EXP { k_; sym=_S});
                cut_blocked_item itm;
                ()
            end
          | C itm -> cut_complete_item itm
          | EXP {sym;k_} -> 
            match is_nt sym with
            | true -> 
              let xs : nt_item list = g.expand_nt (dest_nt sym,k_) in
              r.add_items (List.map (fun x -> N x) xs);
              ()
            | false -> 
              let tm = dest_tm sym in
              let js = g.expand_tm input tm k_ in
              r.add_items (js |> List.map (fun j_ -> C {i_=k_;sym; j_}));
              ()

        let rec loop () = 
          r.debug (r.get_state());
          match r.pop_todo () with
          | None -> ()
          | Some itm -> step itm; loop ()

)
(** Signature of module for charset conversion *)


module type CHARSET_TYPE = 
  sig
    type t
    
    (** create in_enc out_enc : create a new charset converter from charset 
        in_enc to out_enc.
    *)
    val create : string -> string -> t

    (** recode str enc : return a transcoded string according to enc.
    *)
    val recode : string -> t -> string
  end
;;

module Dummy : CHARSET_TYPE =
  struct

    type t = ()

    let create in_enc out_enc = ()

    let recode str () = str
  end
;;
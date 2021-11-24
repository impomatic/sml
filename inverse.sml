(* inverse - modular multiplicative inverse (recursive implementation)
 * returns b^-1 mod m
 *)

fun inverse b m =
let
fun inverse b 0 x y = x
|   inverse b m x y = inverse m (b mod m) y (x-b div m*y);
in
inverse b m 1 0
end

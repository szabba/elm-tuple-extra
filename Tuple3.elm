module Tuple3 (..) where

{-|
# Getters
@docs fst, snd, trd, tail, init

# Maps
@docs map, mapFst, mapSnd, mapTrd, mapEach, mapAll

# Swap
@docs swirlr, swirll

# Transform
@docs toList
-}


{-| -}
fst : ( a, b, c ) -> a
fst ( a, _, _ ) =
    a


{-| -}
snd : ( a, b, c ) -> b
snd ( _, b, _ ) =
    b


{-| -}
trd : ( a, b, c ) -> c
trd ( _, _, c ) =
    c


{-| -}
tail : ( a, b, c ) -> ( b, c )
tail ( _, b, c ) =
    ( b, c )


{-| -}
init : ( a, b, c ) -> ( a, b )
init ( a, b, _ ) =
    ( a, b )


{-| -}
mapFst : (a -> x) -> ( a, b, c ) -> ( x, b, c )
mapFst f ( a, c, d ) =
    ( f a, c, d )


{-| -}
mapSnd : (b -> x) -> ( a, b, c ) -> ( a, x, c )
mapSnd f ( a, b, c ) =
    ( a, f b, c )


{-| -}
mapTrd : (c -> x) -> ( a, b, c ) -> ( a, b, x )
mapTrd f ( a, b, c ) =
    ( a, b, f c )


{-| -}
mapEach : (a -> x) -> (b -> x') -> (c -> x'') -> ( a, b, c ) -> ( x, x', x'' )
mapEach f f' f'' ( a, b, c ) =
    ( f a, f' b, f'' c )


{-| -}
mapAll : (a -> b) -> ( a, a, a ) -> ( b, b, b )
mapAll f ( a, a', a'' ) =
    ( f a, f a', f a'' )


{-| -}
map : (c -> x) -> ( a, b, c ) -> ( a, b, x )
map =
    mapTrd


{-| -}
swirlr : ( a, b, c ) -> ( b, c, a )
swirlr ( a, b, c ) =
    ( b, c, a )


{-| -}
swirll : ( a, b, c ) -> ( c, a, b )
swirll ( a, b, c ) =
    ( c, a, b )


{-| -}
toList : ( a, a, a ) -> List a
toList ( a, b, c ) =
    [ a, b, c ]

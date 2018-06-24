module Msg exposing(..)

type Msg = NoOp
    | Reset
    | FilterName String
    | IncrementLikes Int
    | ShowDialog
    | HideDialog
    | UpdatePreferencesKeywords String
    | UpdatePreferencesGenre String
    | UpdatePreferencesActor String
    | MatchPercentage
    | ChangeGenre String
    | KidsFilter Bool
    | OrderByRating

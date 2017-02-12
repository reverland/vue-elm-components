port module Main exposing (..)

import Html exposing (Html, input, div, text)
import Html.Events exposing (onInput)

-- port for sending strings out to Javascript
port check : String -> Cmd msg

-- port for listening for suggestions from Javascript
port suggestions : (String -> msg) -> Sub msg

main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


-- MODEL


type alias Model =
    { word: String
    , suggestions: String
    }


init : ( Model, Cmd msg)
init =
    ( Model "" "", Cmd.none)


-- UPDATE


type Msg
    = Change String
    | Suggest String


update : Msg -> Model -> ( Model, Cmd msg)
update msg model =
    case msg of
        Change newWord ->
            ( Model newWord "", check newWord )
        Suggest newSuggestion ->
            ( Model model.word newSuggestion, Cmd.none )
        
-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    suggestions Suggest

-- VIEW

view : Model -> Html Msg
view model =
    div []
        [ input [ onInput Change ] []
        , div [] [ text ( "reverse: " ++ model.suggestions ) ]
        ]

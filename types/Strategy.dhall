let OrGHExpression = ./OrGHExpression.dhall

in  { matrix : List { mapKey : Text, mapValue : OrGHExpression (List Text) }
    , fail-fast : Optional Bool
    , max-parallel : Optional Natural
    }

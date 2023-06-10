%dw 2.0
output application/json
/*
Here I am  Reduced the Array of objects into single object and mapped the data based on the Requirement 
*/
---
payload map
{
    ($.field_key): ($.field_value)
} reduce ((item, accumulator={}) ->accumulator ++  item )
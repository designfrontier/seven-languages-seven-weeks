-module(prime).
-export([prime/1]).

prime(N) -> if (is_integer(N)) ->
    if (N > 0) ->
        % If N is an integer greater than 2, we call the function prime(N,Pt,P)
        % We will use two accumulators
        % - P: contains the list of prime numbers
        % - Pt: contains a temporary list of prime numbers used for testing.
        if (N > 2) -> prime(lists:seq(3,N,2),[2],[2]);
            % if integer is 1 or 2 send the list [1] or [1,2]
            true -> lists:seq(2,N)
        end;
        % if N is null or negative return empty list
        true -> []
    end;
    % if N is not an integer return empty list
    true -> []
end.

% return the list of prime numbers.
prime([],_,P) -> lists:reverse(P) ;

% if Pt is empty then H is a prime number and has to be added to the acc P
prime([H|T],[],P) -> prime(T,lists:reverse([H|P]),[H|P]);
prime([H|T],[HP|TP],P) ->
    if ((HP * HP) =<>
        case (H rem HP) of
            0 -> prime(T,lists:reverse(P),P);
            _ -> prime([H|T],TP,P)
    end;

    true ->
    % io:format("~w~w~w~n",[[H|T],[HP|TP],P]),
    prime([H|T],[],P)
end.

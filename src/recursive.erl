%% @author Pedro Lopes
%% Recursive functions module.
-module(recursive).
-export([zip/2,lenient_zip/2,tail_zip/3,tail_lenient_zip/3]).

zip([],[]) -> [];
zip([X|Xs],[Y|Ys]) -> [{X,Y}|zip(Xs,Ys)].

lenient_zip([],_) -> [];
lenient_zip(_,[]) -> [];
lenient_zip([X|Xs],[Y|Ys]) -> [{X,Y}|lenient_zip(Xs,Ys)].

tail_zip([],[],List) -> lists:reverse(List);
tail_zip([X|Xs],[Y|Ys],List) ->
	tail_zip(Xs,Ys,[{X,Y}|List]).

tail_lenient_zip([],_,List) -> lists:reverse(List);
tail_lenient_zip(_,[],List) -> lists:reverse(List);
tail_lenient_zip([X|Xs],[Y|Ys],List) ->
	tail_lenient_zip(Xs,Ys,[{X,Y}|List]).
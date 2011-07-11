%% Author: kirk
%% Created: 2011. 7. 11.
%% Description:�Ϻ�ȣȭ ��� 
-module(seed).

-define( DWORD,	32/unsigned-little-integer ).
-define( WORD,	16/unsigned-little-integer ).
-define( BYTE,	8/unsigned-little-integer ).

-define( NoRounds,		16 ).
-define( NoRoundKeys,	(NoRounds*2) ).
-define( SeedBlockSize,	16 ).
-define( SeedBlockLen,	128).

-define( ROTL(X, N),	( ( X bsl N ) bor ( X bsr (32 - N ) ) ) band 16#FFFFFFFF ).
-define( ROTR(X, N),	( ( X bsr N ) bor ( X bsl (32 - N ) ) ) band 16#FFFFFFFF ).

-define( GetB0(A),	(	A 			band 16#FF ).
-define( GetB1(A),	( (	A bsr 8 )	band 16#FF ).
-define( GetB2(A),	( (	A bsr 16 )	band 16#FF ).
-define( GetB3(A),	( (	A bsr 24 )	band 16#FF ).

-define( GetAt(N, List),	lists:nth(N+1, List) ).


%%
%% Include files
%%
-include("seed.hrl").


%%
%% Exported Functions
%%
-export([seedRoundKey/2, seedDecrypt/2, seedEncrypt/2]).

%%
%% API Functions
%%

seedRoundKey( RoundKey, UserKey ) -> ok.

seedEncrypt( Data, RoundKey ) -> ok.

seedDecrypt( Data, RoundKey ) -> ok.

%%
%% Local Functions
%%

function state = nextState(H, currentState)
% given a transition matrix and the current state,
% this function returns the next state
% find the probabilities of reaching all pages starting at the
%current one
% get the column corresponding to currentState
probVector = H(:,currentState);
% N is the number of pages, that is, H is N x N
N = length(probVector);
% pick the next page randomly according to those probabilities
state = discrete_rnd(N, probVector);
state = state(1);
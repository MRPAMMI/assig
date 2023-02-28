Voting Contract: This contract allows users to vote for a candidate and keeps track of the votes each candidate receives. The _votes mapping is used to store the number of votes each candidate has received. When a user calls voteForCandidate() with a candidate's name, that candidate's vote count is incremented by one. Users can call getVotesForCandidate() with a candidate's name to retrieve the number of votes they have received.

pragma solidity ^0.8.0;

contract Voting {
    mapping (string => uint) private _votes;

    function voteForCandidate(string memory candidate) public {
        _votes[candidate] += 1;
    }

    function getVotesForCandidate(string memory candidate) public view returns (uint) {
        return _votes[candidate];
    }
}

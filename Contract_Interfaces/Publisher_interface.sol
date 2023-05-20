// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface PubSubInterface {
    function registerPerson(uint _userID) external;
    function registerTopic(uint _userID, uint _topicID) external;
    function deleteTopic(uint _userID, uint _topicID) external;
    function publishData(uint _pubid, uint _topicid, uint _eventid, string memory hash) external;
    function retHash(uint _pubid, uint _topicid, uint _eventid) external view returns(string memory);
}

contract MyContract {
    address public pubSubAddress;
    PubSubInterface pubSub;

    constructor(address _pubSubAddress) {
        pubSubAddress = _pubSubAddress;
        pubSub = PubSubInterface(_pubSubAddress);
    }

    function myRegisterPerson(uint _userID) public {
        pubSub.registerPerson(_userID);
    }

    function myRegisterTopic(uint _userID, uint _topicID) public {
        pubSub.registerTopic(_userID, _topicID);
    }

    function myDeleteTopic(uint _userID, uint _topicID) public {
        pubSub.deleteTopic(_userID, _topicID);
    }

    function myPublishData(uint _pubid, uint _topicid, uint _eventid, string memory hash) public {
        pubSub.publishData(_pubid, _topicid, _eventid, hash);
    }

    function myRetHash(uint _pubid, uint _topicid, uint _eventid) public view returns (string memory) {
        return pubSub.retHash(_pubid, _topicid, _eventid);
    }
}

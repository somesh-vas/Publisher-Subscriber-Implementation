// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IPubSub {
    function registerPerson(uint _userID) external;
    function subscription(uint _subs, uint _pub, uint _topicid) external;
    function removeSubs(uint _subs, uint _pub, uint _topicid) external;
}

contract Subscriber {
    IPubSub pubsub;
     
    constructor(address _pubsub) {
        pubsub = IPubSub(_pubsub);
    }
    
    function registerPerson(uint _userID) public {
        pubsub.registerPerson(_userID);
    }
    
    function subscription(uint _subs, uint _pub, uint _topicid) public {
        pubsub.subscription(_subs, _pub, _topicid);
    }
    
    function removeSubs(uint _subs, uint _pub, uint _topicid) public {
        pubsub.removeSubs(_subs, _pub, _topicid);
    }
}

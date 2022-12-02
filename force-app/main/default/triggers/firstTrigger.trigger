trigger firstTrigger on Account (before insert) {
    System.debug('Before insert trigger');
}
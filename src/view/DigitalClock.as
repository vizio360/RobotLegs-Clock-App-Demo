package view
{
    import flash.display.MovieClip;
    import flash.display.Sprite;
    import flash.events.Event;

    /**
     * @author Simone Vicentini
     */
    public class DigitalClock extends Sprite implements Clock
    {
        [Embed(source="../../bin/skins/DigitalClockSkin.swf", symbol="clock")]
        private var skinClass:Class;

        private var skin:Sprite;

        private var hourHand:Sprite;
        private var minutesHand:Sprite;
        private var secondsHand:Sprite;

        public function DigitalClock()
        {
            addEventListener(Event.ADDED_TO_STAGE, onAdddedToStage);
        }

        private function onAdddedToStage(event:Event):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, onAdddedToStage);
            skin = new skinClass();
            hourHand = skin.getChildByName("hours") as Sprite;
            minutesHand = skin.getChildByName("minutes") as Sprite;
            secondsHand = skin.getChildByName("seconds") as Sprite;
            addChild(skin);
        }

        public function set hour(hour:int):void
        {
            setDigits(hourHand, hour);
        }

        private function setDigits(digits:Sprite, n:int):void
        {
            var dec:MovieClip = digits.getChildByName("dec") as MovieClip;
            var uni:MovieClip = digits.getChildByName("uni") as MovieClip;

            dec.gotoAndStop(int(n/10) + 1);
            uni.gotoAndStop(int(n%10) + 1);

        }

        public function set minutes(minutes:int):void
        {
            setDigits(minutesHand, minutes);
        }

        public function set seconds(seconds:int):void
        {
            setDigits(secondsHand, seconds);
        }
    }
}

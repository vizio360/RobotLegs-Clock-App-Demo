package view
{
    import flash.display.Sprite;
    import flash.events.Event;

    /**
     * @author Simone Vicentini
     */
    public class AnalogClock extends Sprite implements Clock
    {
        [Embed(source="../../bin/skins/AnalogClockSkin.swf", symbol="clock")]
        private var skinClass:Class;

        private var skin:Sprite;

        private var hourHand:Sprite;
        private var minutesHand:Sprite;
        private var secondsHand:Sprite;

        public function AnalogClock()
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

        private function set hour(hour:Number):void
        {
            if (hour > 12)
                hour -= 12;
            hourHand.rotation = 360/12 * hour;
        }

        private function set minutes(minutes:int):void
        {
            minutesHand.rotation = 360/60 * minutes;

        }

        private function set seconds(seconds:int):void
        {
            secondsHand.rotation = 360/60 * seconds;
        }

        public function set time(time:Date):void
        {
            var hour:Number = time.hours;
            hour +=  (1/60 * time.minutes);
            this.hour = hour;

            minutes = time.minutes;
            seconds = time.seconds;
        }
    }
}

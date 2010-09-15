package model
{
    import model.events.ClockEvent;

    import org.robotlegs.mvcs.Actor;

    import flash.events.TimerEvent;
    import flash.utils.Timer;

    /**
     * @author Simone Vicentini
     */
    public class ClockModel extends Actor
    {
        private var clockTimer:Timer;

        public function ClockModel()
        {
            super();
            createTime();
            createTimer();
        }

        private function createTime():void
        {
        }

        private function createTimer():void
        {
            clockTimer = new Timer(1000);
            clockTimer.addEventListener(TimerEvent.TIMER, onClockTimer);
        }

        private function onClockTimer(event:TimerEvent):void
        {
            dispatch(new ClockEvent(ClockEvent.TICK, new Date()));
        }

        public function start():void
        {
            clockTimer.start();
        }

        public function get time():Date
        {
            return new Date();
        }
    }
}

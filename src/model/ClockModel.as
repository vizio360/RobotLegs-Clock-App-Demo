package model
{
    import controller.ClockEvent;

    import org.robotlegs.mvcs.Actor;

    import flash.events.TimerEvent;
    import flash.utils.Timer;

    /**
     *
     *
     * @author Simone Vicentini
     */
    public class ClockModel extends Actor
    {
        //timer to dispatch the new time every second
        private var clockTimer:Timer;
        //actual time object
        private var _time:Date;

        public function ClockModel()
        {
            super();
            createTime();
            createTimer();
        }

        private function createTime():void
        {
            _time = new Date();
        }

        private function createTimer():void
        {
            clockTimer = new Timer(1000);
            clockTimer.addEventListener(TimerEvent.TIMER, onClockTimer);
        }

        private function onClockTimer(event:TimerEvent):void
        {
            _time.setTime(_time.getTime() + 1000);
            dispatch(new ClockEvent(ClockEvent.TICK, _time));
        }

        /*
         * Starts the timer to dispatch the time
         */
        public function start():void
        {
            clockTimer.start();
        }

        public function get time():Date
        {
            return _time;
        }
    }
}

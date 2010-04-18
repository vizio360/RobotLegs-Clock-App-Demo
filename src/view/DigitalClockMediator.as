package view
{
    import controller.ClockEvent;

    import flash.events.Event;

    /**
     * @author Simone Vicentini
     */
    public class DigitalClockMediator extends AbstractClockMediator
    {

        public function DigitalClockMediator()
        {
            super(this);
        }

        override public function onRegister():void
        {
            super.onRegister();
            eventMap.mapListener(clockView, Event.ADDED_TO_STAGE, onViewAddedToStage);
        }

        private function onViewAddedToStage(event:Event):void
        {
            updateView(clockModel.time);
        }

        private function updateView(newTime:Date):void
        {
            clockView.seconds = newTime.seconds;
            clockView.minutes = newTime.minutes;
            clockView.hour = newTime.hours;
        }

        override protected function onClockTick(event:ClockEvent):void
        {
            var newTime:Date = event.time;
            updateView(newTime);
        }
    }
}

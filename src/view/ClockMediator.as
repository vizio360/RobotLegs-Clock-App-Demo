package view
{
    import model.ClockModel;
    import model.events.ClockEvent;

    import org.robotlegs.mvcs.Mediator;

    import flash.events.Event;

    /**
     * @author Simone Vicentini
     */
    public class ClockMediator extends Mediator
    {
        [Inject]
        public var clockModel:ClockModel;

        [Inject]
        public var clockView:Clock;

        public function ClockMediator()
        {

        }

        override public function onRegister():void
        {
            super.onRegister();
            eventMap.mapListener(eventDispatcher, ClockEvent.TICK, onClockTick);
            eventMap.mapListener(clockView, Event.ADDED_TO_STAGE, onViewAddedToStage);
        }

        private function onViewAddedToStage(event:Event):void
        {
            updateView(clockModel.time);
        }

        private function updateView(newTime:Date):void
        {
            clockView.time = newTime;
        }

        private function onClockTick(event:ClockEvent):void
        {
            var newTime:Date = event.time;
            updateView(newTime);
        }
    }
}

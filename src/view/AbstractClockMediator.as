package view
{
    import controller.ClockEvent;

    import model.ClockModel;

    import org.robotlegs.mvcs.Mediator;

    import flash.errors.IllegalOperationError;

    /**
     * @author Simone Vicentini
     */
    public class AbstractClockMediator extends Mediator
    {
        [Inject]
        public var clockModel:ClockModel;

        [Inject]
        public var clockView:Clock;

        public function AbstractClockMediator(self:AbstractClockMediator)
        {
            super();
            if(self != this)
            {
                //only a subclass can pass a valid reference to self
                throw new IllegalOperationError("Abstract class did not receive reference to self. MyAbstractType cannot be instantiated directly.");
            }
        }

        override public function onRegister():void
        {
            super.onRegister();
            eventMap.mapListener(eventDispatcher, ClockEvent.TICK, onClockTick);
        }

        protected function onClockTick(event:ClockEvent):void
        {
            trace("Implement me!!!!");
        }
    }
}

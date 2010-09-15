package
{
    import events.ClockAppEvent;

    import org.robotlegs.mvcs.Mediator;

    import flash.events.Event;

    /**
     * @author Simone Vicentini
     */
    public class ClockAppMediator extends Mediator
    {
        [Inject]
        public var view:ClockApp;

        public function ClockAppMediator()
        {
            super();
        }

        override public function onRegister():void
        {
            super.onRegister();
            eventMap.mapListener(view.stage, Event.RESIZE, onStageResize);
            eventMap.mapListener(eventDispatcher, ClockAppEvent.ADD_CLOCK, addClock);
        }

        override public function onRemove():void
        {
            super.onRemove();
            eventMap.unmapListener(view.stage, Event.RESIZE, onStageResize);
            eventMap.unmapListener(eventDispatcher, ClockAppEvent.ADD_CLOCK, addClock);
        }

        private function onStageResize(e:Event):void
        {
            view.alignChildren();
        }

        public function addClock(event:ClockAppEvent):void
        {
            view.addChild(event.clock);
            view.alignChildren();
        }
    }
}

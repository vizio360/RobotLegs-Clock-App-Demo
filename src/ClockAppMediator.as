package
{
    import org.robotlegs.mvcs.Mediator;

    import flash.display.Sprite;
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
        }

        private function onStageResize(e:Event):void
        {
            alignChildren();
        }

        public function alignChildren():void
        {
            var clockCount:int = contextView.numChildren;
            var clock:Sprite;
            var y:Number = 10;
            for (var i:int = 0; i < clockCount; i++)
            {
                clock = contextView.getChildAt(i) as Sprite;
                clock.x = (contextView.stage.stageWidth - clock.width) / 2;
                clock.y = y;
                y += clock.height + 15;
            }
        }
    }
}

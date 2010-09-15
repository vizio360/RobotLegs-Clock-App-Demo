package
{
    import org.robotlegs.base.ContextEvent;
    import org.robotlegs.mvcs.Mediator;

    import flash.display.Stage;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;

    /**
     * @author Simone Vicentini
     */
    public class StageMediator extends Mediator
    {
        [Inject]
        public var _stage:Stage;

        public function StageMediator()
        {
            super();
        }

        override public function onRegister():void
        {
            eventMap.mapListener(eventDispatcher, ContextEvent.STARTUP_COMPLETE, setupStage);
        }

        override public function onRemove():void
        {
            eventMap.unmapListener(eventDispatcher, ContextEvent.STARTUP_COMPLETE, setupStage);
        }

        private function setupStage(e:ContextEvent):void
        {
            _stage.scaleMode = StageScaleMode.NO_SCALE;
            _stage.align = StageAlign.TOP_LEFT;
        }
    }
}

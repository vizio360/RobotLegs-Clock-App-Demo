package
{
    import controller.AlignClocksOnStage;
    import controller.AddClocks;
    import controller.SetupStage;
    import controller.StartClock;

    import model.ClockModel;

    import view.AnalogClock;
    import view.Clock;
    import view.ClockMediator;
    import view.DigitalClock;

    import org.robotlegs.base.ContextEvent;
    import org.robotlegs.mvcs.Context;

    import flash.display.DisplayObjectContainer;

    /**
     * @author Simone Vicentini
     */
    public class ClockContext extends Context
    {
        public function ClockContext(contextView:DisplayObjectContainer = null, autoStartup:Boolean = true)
        {
            super(contextView, autoStartup);
        }

        override public function startup():void
        {
            commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, SetupStage);
            commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, AddClocks);
            commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, AlignClocksOnStage);
            commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartClock);


            injector.mapSingleton(ClockModel);

            mediatorMap.mapView(ClockApp, ClockAppMediator);
            mediatorMap.createMediator(contextView);

            mediatorMap.mapView(AnalogClock, ClockMediator, Clock);
            mediatorMap.mapView(DigitalClock, ClockMediator, Clock);

            super.startup();
        }
    }
}

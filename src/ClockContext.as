package
{
    import controller.StartClock;

    import model.ClockModel;

    import view.AnalogClock;
    import view.AnalogClockMediator;
    import view.Clock;
    import view.DigitalClock;
    import view.DigitalClockMediator;

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
            commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartClock);


            injector.mapSingleton(ClockModel);

            mediatorMap.mapView(ClockApp, ClockAppMediator);
            mediatorMap.createMediator(contextView);

            mediatorMap.mapView(AnalogClock, AnalogClockMediator, Clock);
            mediatorMap.mapView(DigitalClock, DigitalClockMediator, Clock);

            super.startup();
        }
    }
}

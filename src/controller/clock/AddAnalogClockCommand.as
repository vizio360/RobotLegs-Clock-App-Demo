package controller.clock
{
    import events.ClockAppEvent;

    import view.AnalogClock;

    import org.robotlegs.mvcs.Command;

    /**
     * @author Simone Vicentini
     */
    public class AddAnalogClockCommand extends Command
    {
        override public function execute():void
        {
            dispatch(new ClockAppEvent(ClockAppEvent.ADD_CLOCK, new AnalogClock()));
        }
    }
}

package controller.clock
{
    import events.ClockAppEvent;

    import view.DigitalClock;

    import org.robotlegs.mvcs.Command;

    /**
     * @author Simone Vicentini
     */
    public class AddDigitalClockCommand extends Command
    {
        override public function execute():void
        {
            dispatch(new ClockAppEvent(ClockAppEvent.ADD_CLOCK, new DigitalClock()));
        }
    }
}

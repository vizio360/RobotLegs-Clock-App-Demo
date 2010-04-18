package controller
{
    import flash.events.Event;

    /**
     * @author Simone Vicentini
     */
    public class ClockEvent extends Event
    {
        public static const START:String = "START";
        public static const TICK:String = "TICK";

        public var time:Date;

        public function ClockEvent(type:String, time:Date, bubbles:Boolean = false, cancelable:Boolean = false)
        {
            super(type, bubbles, cancelable);
            this.time = time;
        }
    }
}

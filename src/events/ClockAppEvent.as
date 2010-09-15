package events
{
    import flash.display.DisplayObject;
    import flash.events.Event;

    /**
     * @author Simone Vicentini
     */
    public class ClockAppEvent extends Event
    {
        public static const ADD_CLOCK:String = "CloclAppEvent::ADD_CLOCK";

        protected var _clock:DisplayObject;
        public function ClockAppEvent(type:String, clock:DisplayObject, bubbles:Boolean = false, cancelable:Boolean = false)
        {
            super(type, bubbles, cancelable);
            _clock = clock;
        }

        public function get clock():DisplayObject
        {
            return _clock;
        }
    }
}

package
{
    import flash.display.Sprite;

    /**
     * @author Simone Vicentini
     */
    public class ClockApp extends Sprite
    {
        private var clockContext:ClockContext;
        public function ClockApp()
        {
            clockContext = new ClockContext(this);
        }
    }
}

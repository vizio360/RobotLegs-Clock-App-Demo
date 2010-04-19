package view
{
    import flash.events.IEventDispatcher;

    /**
     * @author Simone Vicentini
     */
    public interface Clock extends IEventDispatcher
    {
        function set time(time:Date):void;
        function set x(x:Number):void;
        function set y(y:Number):void;
    }
}

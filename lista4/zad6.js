class Point
{
    constructor(x, y, color)
    {
        this.x = x;
        this.y = y;
        this.color = color;
    }
    contains(x, y)
    {
        if(this.x == x && this.y == y)
            return true;
        else
            return false;
    }
}

class Circle extends Point
{
    constructor(x, y, r, color)
    {
        super(x, y, color)
        {
            this.r = r || 1;
        }
    }
    contains(x, y)
    {
        if(Math.pow((x - this.x), 2) + Math.pow((y - this.y), 2) < Math.pow(r, 2))
            return true;
        else
            return false;
    }
}

class Rectangle extends Point
{
    constructor(x, y, a, b, color)
    {
        super(x ,y, color)
        {
            this.a = a;
            this.b = b;
        }
    }
    contains(x, y)
    {
        if((this.x < x && x < this.x + this.a) && (this.y < y && y < this.y + this.b))
            return true;
        else
            return false;
    }
}

class Polygon extends Point
{
    constructor (x, y, color)
    {
        super(color)
        {
            this.x = x || [];
            this.y = y || [];
        }
    }
    contains(x, y)
    {
        //Nie potrafiłem tego zrobić
    }
}
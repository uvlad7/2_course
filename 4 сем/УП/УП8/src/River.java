import javax.imageio.ImageIO;
import java.awt.*;
import java.io.File;
import java.io.IOException;


public class River extends Entity {
    private static Image[] images;

    static {
        try {
            images = new Image[]{ImageIO.read(new File("src\\images\\river.png"))};
        } catch (IOException e) {
            System.err.println("Can't load river image");
        }
    }

    public River(int x, int y, TankClient tankClient) {
        super(x, y, tankClient);
    }

    @Override
    public void draw(Graphics g) {
        g.drawImage(images[0], x, y, null);
    }

    public Rectangle getRect() {
        return new Rectangle(x, y, width, height);
    }

}

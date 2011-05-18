class HomeController < ActionController::Base
  protect_from_forgery

  def index
    xml_example = '<?xml version="1.0" encoding="utf-8"?>
    <eventFormat>
        <categories>
            <category name="Oefeningen" type="list">
                <item location="0" contacts="0">
                    <image>/images/rails.png</image>
                    <name>Cardio</name>
                    <details>
                        <detail>
                            <label>Apparaat</label>
                            <description>324</description>
                        </detail>
                        <detail>
                            <label>Tijdsduur</label>
                            <description>324</description>
                        </detail>
                        <detail>
                            <label>Intensiteit</label>
                            <description>234</description>
                        </detail>
                    </details>
                    <item_description>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Sed sed justo cursus turpis volutpat pharetra.
                        Nam lectus odio, euismod et mollis nec, sagittis vel ante.
                        Sed in purus augue, nec ultrices arcu. Donec ut orci dolor, eget molestie diam.
                        Quisque placerat vehicula nisi eu ullamcorper. In ut ligula mauris.
                        Sed mollis condimentum porta.
                    </item_description>
                    <extra>
                        <detail>
                            <label>test</label>
                            <description>test</description>
                        </detail>
                    </extra>
                </item>
                <item location="0" contacts="0">
                    <image>/images/rails.png</image>
                    <name>Cardio</name>
                    <details>
                        <detail>
                            <label>Apparaat</label>
                            <description>324</description>
                        </detail>
                        <detail>
                            <label>Tijdsduur</label>
                            <description>213</description>
                        </detail>
                        <detail>
                            <label>Intensiteit</label>
                            <description>7</description>
                        </detail>
                    </details>
                    <item_description>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Sed sed justo cursus turpis volutpat pharetra.
                        Nam lectus odio, euismod et mollis nec, sagittis vel ante.
                        Sed in purus augue, nec ultrices arcu. Donec ut orci dolor, eget molestie diam.
                        Quisque placerat vehicula nisi eu ullamcorper. In ut ligula mauris.
                        Sed mollis condimentum porta.
                    </item_description>
                    <extra>
                        <detail>
                            <label>test</label>
                            <description>test</description>
                        </detail>
                    </extra>
                </item>
            </category>
            <category name="Groepoefeningen" type="list">
                <item location="0" contacts="0">
                    <image>/images/rails.png</image>
                    <name>Bodypump</name>
                    <details>
                        <detail>
                            <label>Spiergroep</label>
                            <description>Blaat</description>
                        </detail>
                        <detail>
                            <label>Setjes</label>
                            <description>1</description>
                        </detail>
                        <detail>
                            <label>Reps</label>
                            <description>5</description>
                        </detail>
                    </details>
                    <item_description>
                        Sed in purus augue, nec ultrices arcu. Donec ut orci dolor, eget molestie diam.
                        Quisque placerat vehicula nisi eu ullamcorper. In ut ligula mauris.
                        Sed mollis condimentum porta.
                    </item_description>
                    <extra>
                        <detail>
                            <label></label>
                            <description></description>
                        </detail>
                    </extra>
                </item>
                <item location="0" contacts="0">
                    <image>/images/rails.png</image>
                    <name>Cardio</name>
                    <details>
                        <detail>
                            <label>Apparaat</label>
                            <description>324</description>
                        </detail>
                        <detail>
                            <label>Tijdsduur</label>
                            <description>213</description>
                        </detail>
                        <detail>
                            <label>Intensiteit</label>
                            <description>7</description>
                        </detail>
                    </details>
                    <item_description>Nam lectus odio, euismod et mollis nec, sagittis vel ante.
                        Sed in purus augue, nec ultrices arcu. Donec ut orci dolor, eget molestie diam.
                        Quisque placerat vehicula nisi eu ullamcorper. In ut ligula mauris.
                        Sed mollis condimentum porta.
                    </item_description>
                    <extra>
                        <detail>
                            <label>test</label>
                            <description>test</description>
                        </detail>
                    </extra>
                </item>
            </category>
        </categories>
    </eventFormat>
    ';
    xml_doc = Nokogiri::XML(xml_example)

    @xml = xml_doc;
    @developer = Developer.find(1);
    @user = User.find(2);
    render :layout => "application";
  end
end
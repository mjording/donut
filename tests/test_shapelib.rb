require "test/unit"
# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.dirname(__FILE__) + '/../lib/shapelib/shapelib'
class TestShapelib < Test::Unit::TestCase
    
  def test_new_shape
    shp = ShapeLib::Shape.new({"name"=>"", :n_parts=>0, :n_vertices=>1, :minbound=>[], :part_start=>[], :xvals=>[], :maxbound=>[], :part_type=>[], :yvals=>[], :shape_type=>:Point, :shape_id=>nil, :zvals=>[], :mvals=>[]})
    assert_not_nil shp
    assert_kind_of ShapeLib::Point, shp
    test_shp_common(shp)
  end
  # def test_new_point
  #     pt = ShapeLib.new_point(10.0, 20.0)
  #     assert_not_nil pt
  #     assert_kind_of ShapeLib::Point, pt
  #     test_shp_common(pt)
  #     assert_equal pt.mvals.first, 0.0
  #     assert_equal pt.zvals.first, 0.0
  #   end
  #   def test_new_point_m 
  #    pt_m = ShapeLib.new_point(10.0,20.0,30.0)
  #    assert_not_nil pt_m
  #    assert_kind_of ShapeLib::PointM, pt_m
  #    test_shp_common(pt_m)
  #    assert_equal pt_m.zvals.first, 0.0
  #   end
  #   def test_new_point_z
  #     pt_z = ShapeLib.new_point(10.0,20.0,30.0,40.0, nil)
  #     assert_not_nil pt_z
  #     assert_kind_of ShapeLib::PointZ, pt_z
  #     test_shp_common(pt_z)
  #   end
  #   def test_new_arc
  #     set_points
  #     arc = ShapeLib::Arc::new([10.0,20.0], @p1)
  #     
  #     assert_not_nil arc
  #     assert_kind_of ShapeLib::Arc, arc
  #     test_shp_common(arc)
  #     
  #     multi_arc = ShapeLib::Arc::new([@p1, @p2],[@p3, @p4])
  #     assert_not_nil multi_arc
  #     assert_kind_of ShapeLib::Arc, multi_arc
  #     test_shp_common(multi_arc)
  #     
  #     multi_arc_m = ShapeLib::ArcM::new([@p4, @p4],[@p3, @p4])
  #     assert_not_nil multi_arc_m
  #     assert_kind_of ShapeLib::ArcM, multi_arc_m
  #     test_shp_common(multi_arc_m)
  #     
  #     multi_arc_z = ShapeLib::ArcZ::new([@p4, @p4],[@p3, @p4])
  #     assert_not_nil multi_arc_z
  #     assert_kind_of ShapeLib::ArcZ, multi_arc_z  
  #     test_shp_common(multi_arc_z)
  #     
  #     
  #   end
  #   
  #   def test_new_poly
  #     set_points
  #     poly = ShapeLib::Polygon::new @p1, @p2,@p3, @p4
  #     assert_not_nil poly
  #     assert_kind_of ShapeLib::Polygon, poly  
  #     test_shp_common(poly)
  #   end
  #   
  #   def test_new_multipoint
  #     set_points
  #     mp = ShapeLib::MultiPoint::new @p1, @p2,@p3, @p4, @p5, @p6
  #     assert_not_nil mp
  #     assert_kind_of ShapeLib::MultiPoint, mp  
  #     test_shp_common(mp)
  #   end
  #   
  #   def test_new_multipatch
  #     set_points
  #     mp = ShapeLib::MultiPatch::new [:Polygon, @p1, @p2,@p3], [:MultiPoint, @p1, @p2,@p3]
  #     assert_not_nil mp
  #     assert_kind_of ShapeLib::MultiPatch, mp  
  #     test_shp_common(mp)
  #   end
    def test_shp_common(shp)
        assert_respond_to shp, :inspect
        assert_respond_to shp, :maxbound
        assert_respond_to shp, :minbound
        assert_respond_to shp, :part_start
        assert_respond_to shp, :part_type
        assert_respond_to shp, :rewind_polygon
        assert_respond_to shp, :shape_id
        assert_respond_to shp, :shape_type
        assert_respond_to shp, :to_h
        
        assert_respond_to shp, :to_s
        assert_respond_to shp, :wkt
        assert_respond_to shp, :xvals
        assert_respond_to shp, :yvals
        assert_respond_to shp, :mvals
        assert_respond_to shp, :zvals
      end
  #   def test_read_shp_file
  #     ShapeLib::ShapeFile.open("../example/all_dpho_dohmh_2008/ALL_DPHO_DOHMH_2000") { |fp|
  #        assert_operator fp.size, :>, 0
  #       
  #     }
  #     
  #   end
  
  
  def set_points
    @p1 = ShapeLib.new_point(503.9,2.2)
    @p2 = ShapeLib.new_point(10.0,20.0)
    @p3 = ShapeLib.new_point(40.0, 34.0,20.0)
    @p4 = ShapeLib.new_point(15.4, 24.4,2.9)
    @p5 = ShapeLib.new_point(10.0,20.0,30.0,200.0,nil)
    @p6 = ShapeLib.new_point(88.2,23.4,33.5,92.1,nil)
  end
  
end
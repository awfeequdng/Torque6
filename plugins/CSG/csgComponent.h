//-----------------------------------------------------------------------------
// Copyright (c) 2015 Andrew Mac
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.
//-----------------------------------------------------------------------------

#ifndef _CSG_COMPONENT_H_
#define _CSG_COMPONENT_H_

#ifndef _PLUGINS_SHARED_H
#include <plugins/plugins_shared.h>
#endif

#ifndef _ASSET_PTR_H_
#include "assets/assetPtr.h"
#endif

#ifndef _BASE_COMPONENT_H_
#include <scene/components/baseComponent.h>
#endif

#ifndef _TICKABLE_H_
#include "platform/Tickable.h"
#endif

namespace Scene 
{
   class CSGComponent : public BaseComponent
   {
      private:
         typedef BaseComponent Parent;
         
      protected:
         Rendering::RenderData*              mRenderData;
         bgfx::VertexBufferHandle            mVertexBuffer;
         Vector<Graphics::PosUVNormalVertex> mVertexList;
         bgfx::IndexBufferHandle             mIndexBuffer;
         Vector<uint16_t>                    mIndexList;

      public:
         CSGComponent();

         void onAddToScene();
         void refresh();

         static void initPersistFields();

         DECLARE_PLUGIN_CONOBJECT(CSGComponent);
   };
}

#endif // _CSG_COMPONENT_H_